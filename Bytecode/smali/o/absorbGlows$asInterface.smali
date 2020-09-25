.class final Lo/absorbGlows$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/absorbGlows;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic ICustomTabsCallback:Lo/absorbGlows;


# direct methods
.method constructor <init>(Lo/absorbGlows;)V
    .locals 0

    iput-object p1, p0, Lo/absorbGlows$asInterface;->ICustomTabsCallback:Lo/absorbGlows;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 34
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    iget-object p1, p0, Lo/absorbGlows$asInterface;->ICustomTabsCallback:Lo/absorbGlows;

    .line 2000
    iget-object p1, p1, Lo/absorbGlows;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 1089
    iget-object v0, p0, Lo/absorbGlows$asInterface;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-static {v0}, Lo/absorbGlows;->onNavigationEvent(Lo/absorbGlows;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/getMoveDuration;->onNavigationEvent(Lo/getMoveDuration;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Lo/addWrite;

    .line 1091
    iget-object v1, p0, Lo/absorbGlows$asInterface;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-static {v1}, Lo/absorbGlows;->extraCallback(Lo/absorbGlows;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string v3, "bottom_sheet_with_image"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 1091
    iget-object v1, p0, Lo/absorbGlows$asInterface;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-static {v1}, Lo/absorbGlows;->ICustomTabsCallback(Lo/absorbGlows;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3043
    new-instance v2, Lo/addWrite;

    const-string v3, "card_count"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 1090
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "referral_bottom_sheet_contacts_click"

    .line 1090
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1092
    iget-object p1, p0, Lo/absorbGlows$asInterface;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 34
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
