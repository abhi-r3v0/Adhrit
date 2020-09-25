.class final Lo/dispatchAdditions$ICustomTabsCallback$Stub;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchAdditions;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/dispatchAdditions;


# direct methods
.method constructor <init>(Lo/dispatchAdditions;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchAdditions$ICustomTabsCallback$Stub;->onPostMessage:Lo/dispatchAdditions;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 41
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Lo/addWrite;

    .line 1098
    iget-object v1, p0, Lo/dispatchAdditions$ICustomTabsCallback$Stub;->onPostMessage:Lo/dispatchAdditions;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->galleryTxt:I

    invoke-virtual {v1, v2}, Lo/dispatchAdditions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    const-string v2, "galleryTxt"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string v3, "cta_title"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 1098
    iget-object v1, p0, Lo/dispatchAdditions$ICustomTabsCallback$Stub;->onPostMessage:Lo/dispatchAdditions;

    invoke-static {v1}, Lo/dispatchAdditions;->extraCallback(Lo/dispatchAdditions;)Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3013
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3043
    :goto_0
    new-instance v2, Lo/addWrite;

    const-string v3, "lob"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 1098
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "document_upload_source_cta"

    .line 1098
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1099
    iget-object p1, p0, Lo/dispatchAdditions$ICustomTabsCallback$Stub;->onPostMessage:Lo/dispatchAdditions;

    invoke-static {p1}, Lo/dispatchAdditions;->onNavigationEvent(Lo/dispatchAdditions;)V

    .line 41
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
