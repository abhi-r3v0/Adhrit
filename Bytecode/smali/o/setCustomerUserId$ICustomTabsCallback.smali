.class final Lo/setCustomerUserId$ICustomTabsCallback;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setCustomerUserId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:I

.field private final onPostMessage:I


# direct methods
.method constructor <init>(Lo/waitForCustomerUserId;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;II)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    .line 78
    iput p2, p0, Lo/setCustomerUserId$ICustomTabsCallback;->onMessageChannelReady:I

    .line 79
    iput p3, p0, Lo/setCustomerUserId$ICustomTabsCallback;->onPostMessage:I

    return-void
.end method


# virtual methods
.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 3

    .line 66
    check-cast p1, Lo/getRootAlpha;

    if-eqz p1, :cond_2

    .line 1090
    invoke-virtual {p1}, Lo/getRootAlpha;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/convertToJsonObject;

    if-eqz v0, :cond_2

    .line 1095
    invoke-virtual {v0}, Lo/convertToJsonObject;->onNavigationEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1099
    :cond_1
    instance-of v1, v0, Lo/onAppLinkFetchFailed;

    if-eqz v1, :cond_2

    .line 1100
    check-cast v0, Lo/onAppLinkFetchFailed;

    .line 1159
    iget-object v0, v0, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1106
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    .line 1107
    iget v2, p0, Lo/setCustomerUserId$ICustomTabsCallback;->onMessageChannelReady:I

    if-lt v1, v2, :cond_2

    .line 1110
    iget v2, p0, Lo/setCustomerUserId$ICustomTabsCallback;->onPostMessage:I

    if-gt v1, v2, :cond_2

    .line 1114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 2020
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1086
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    return-void
.end method
