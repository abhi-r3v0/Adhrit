.class public Lo/setEndIconTintMode$onMessageChannelReady;
.super Lo/setSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setEndIconTintMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setSource<",
        "Lo/setEndIconTintMode$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/setSource;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lo/setEndIconTintMode$onMessageChannelReady;->extraCallback()Lo/PaymentRequestItem;

    move-result-object v0

    check-cast v0, Lo/setEndIconTintMode$onPostMessage;

    invoke-interface {v0}, Lo/setEndIconTintMode$onPostMessage;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
