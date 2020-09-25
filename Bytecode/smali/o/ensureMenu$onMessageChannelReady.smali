.class final Lo/ensureMenu$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureMenu;->onNavigationEvent(ZZLjava/lang/CharSequence;I)V
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
.field private synthetic ICustomTabsCallback:I

.field private synthetic onMessageChannelReady:Ljava/lang/CharSequence;

.field private synthetic onNavigationEvent:Landroid/text/SpannableString;

.field private synthetic onPostMessage:Lo/ensureMenu;


# direct methods
.method constructor <init>(Lo/ensureMenu;Ljava/lang/CharSequence;ILandroid/text/SpannableString;)V
    .locals 0

    iput-object p1, p0, Lo/ensureMenu$onMessageChannelReady;->onPostMessage:Lo/ensureMenu;

    iput-object p2, p0, Lo/ensureMenu$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/CharSequence;

    iput p3, p0, Lo/ensureMenu$onMessageChannelReady;->ICustomTabsCallback:I

    iput-object p4, p0, Lo/ensureMenu$onMessageChannelReady;->onNavigationEvent:Landroid/text/SpannableString;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 33
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1137
    iget-object p1, p0, Lo/ensureMenu$onMessageChannelReady;->onPostMessage:Lo/ensureMenu;

    .line 2039
    iget-boolean v0, p1, Lo/ensureMenu;->onPostMessage:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3039
    iput-boolean v0, p1, Lo/ensureMenu;->onPostMessage:Z

    .line 1138
    iget-object v2, p0, Lo/ensureMenu$onMessageChannelReady;->onPostMessage:Lo/ensureMenu;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lo/ensureMenu$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/CharSequence;

    iget v6, p0, Lo/ensureMenu$onMessageChannelReady;->ICustomTabsCallback:I

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lo/ensureMenu;->onPostMessage(Lo/ensureMenu;ZZLjava/lang/CharSequence;II)V

    .line 1139
    iget-object p1, p0, Lo/ensureMenu$onMessageChannelReady;->onNavigationEvent:Landroid/text/SpannableString;

    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "RBI approved credit bureaus"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 3048
    invoke-static {p1, v0, v2}, Lo/childWrites;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onboard_permission_checkbox_click"

    .line 1140
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    goto :goto_0

    .line 1141
    :cond_0
    iget-object p1, p0, Lo/ensureMenu$onMessageChannelReady;->onNavigationEvent:Landroid/text/SpannableString;

    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "WhatsApp"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Lo/childWrites;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v1, [Lo/addWrite;

    .line 4043
    new-instance v0, Lo/addWrite;

    const-string/jumbo v3, "source"

    const-string v4, "email screen"

    invoke-direct {v0, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v2

    const-string v0, "pairs"

    .line 1142
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "onboard_whatsapp_checkbox_click"

    .line 1142
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 33
    :cond_1
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
