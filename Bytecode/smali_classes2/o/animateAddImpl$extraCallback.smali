.class public final Lo/animateAddImpl$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ak$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateAddImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/currency/CredCurrencyViewModel$Companion;",
        "",
        "()V",
        "PENDING_REFERRAL_PEOPLE_DISPLAY_COUNT",
        "",
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
.field private final ICustomTabsCallback:Lo/ak;

.field private final onNavigationEvent:Lo/OaidClient$Info;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/ak;Lo/OaidClient$Info;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/animateAddImpl$extraCallback;->ICustomTabsCallback:Lo/ak;

    iput-object p2, p0, Lo/animateAddImpl$extraCallback;->onNavigationEvent:Lo/OaidClient$Info;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2000
    iget-object v0, p0, Lo/animateAddImpl$extraCallback;->ICustomTabsCallback:Lo/ak;

    iget-object v1, p0, Lo/animateAddImpl$extraCallback;->onNavigationEvent:Lo/OaidClient$Info;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2267
    invoke-static {p1, v1}, Lo/ak;->extraCallback(Landroid/database/sqlite/SQLiteDatabase;Lo/OaidClient$Info;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2269
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 3082
    :cond_0
    iget-object v1, v0, Lo/ak;->onNavigationEvent:Lo/am;

    .line 4000
    new-instance v2, Lo/PreferenceGroup$extraCallback;

    invoke-direct {v2, v1}, Lo/PreferenceGroup$extraCallback;-><init>(Lo/am;)V

    .line 5000
    sget-object v1, Lo/shouldIgnore$ICustomTabsCallback;->ICustomTabsCallback:Lo/shouldIgnore$ICustomTabsCallback;

    .line 3082
    invoke-virtual {v0, v2, v1}, Lo/ak;->onPostMessage(Lo/ak$onMessageChannelReady;Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 2275
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 2273
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 6000
    sget-object v0, Lo/shouldIgnore;->onNavigationEvent:Lo/shouldIgnore;

    .line 2271
    invoke-static {p1, v0}, Lo/ak;->ICustomTabsCallback(Landroid/database/Cursor;Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method
