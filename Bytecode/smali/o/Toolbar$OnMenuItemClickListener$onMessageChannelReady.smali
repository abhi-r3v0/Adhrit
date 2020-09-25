.class public final Lo/Toolbar$OnMenuItemClickListener$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/convertDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Toolbar$OnMenuItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/androidapp/ui/amex/AmexWebviewViewModel$fetchJavaScript$1",
        "Lokhttp3/Callback;",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/Toolbar$OnMenuItemClickListener;


# direct methods
.method constructor <init>(Lo/Toolbar$OnMenuItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lo/Toolbar$OnMenuItemClickListener$onMessageChannelReady;->extraCallback:Lo/Toolbar$OnMenuItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lo/convertInteger;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lo/Toolbar$OnMenuItemClickListener$onMessageChannelReady;->extraCallback:Lo/Toolbar$OnMenuItemClickListener;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "e.localizedMessage"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lo/Toolbar$OnMenuItemClickListener;->onMessageChannelReady(Lo/Toolbar$OnMenuItemClickListener;Ljava/lang/String;)V

    return-void
.end method

.method public final onResponse(Lo/convertInteger;Lo/childAddedChange;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "response"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1106
    iget p1, p2, Lo/childAddedChange;->onNavigationEvent:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-lt p1, v2, :cond_0

    iget p1, p2, Lo/childAddedChange;->onNavigationEvent:I

    const/16 v2, 0x12c

    if-ge p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 1177
    iget-object p1, p2, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Lo/getChildKey;->extraCallback()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, ""

    .line 41
    :cond_2
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 42
    iget-object p2, p0, Lo/Toolbar$OnMenuItemClickListener$onMessageChannelReady;->extraCallback:Lo/Toolbar$OnMenuItemClickListener;

    invoke-static {p2}, Lo/Toolbar$OnMenuItemClickListener;->extraCallback(Lo/Toolbar$OnMenuItemClickListener;)Lo/setActive;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 44
    :cond_4
    iget-object p1, p0, Lo/Toolbar$OnMenuItemClickListener$onMessageChannelReady;->extraCallback:Lo/Toolbar$OnMenuItemClickListener;

    const-string p2, "empty json from url"

    invoke-static {p1, p2}, Lo/Toolbar$OnMenuItemClickListener;->onMessageChannelReady(Lo/Toolbar$OnMenuItemClickListener;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_5
    iget-object p1, p0, Lo/Toolbar$OnMenuItemClickListener$onMessageChannelReady;->extraCallback:Lo/Toolbar$OnMenuItemClickListener;

    .line 2098
    iget p2, p2, Lo/childAddedChange;->onNavigationEvent:I

    .line 47
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lo/Toolbar$OnMenuItemClickListener;->onMessageChannelReady(Lo/Toolbar$OnMenuItemClickListener;Ljava/lang/String;)V

    return-void
.end method
