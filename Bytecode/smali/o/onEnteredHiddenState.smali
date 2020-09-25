.class public final Lo/onEnteredHiddenState;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ak$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onEnteredHiddenState$onMessageChannelReady;,
        Lo/onEnteredHiddenState$extraCallback;,
        Lo/onEnteredHiddenState$onNavigationEvent;,
        Lo/onEnteredHiddenState$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/onEnteredHiddenState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/onEnteredHiddenState;

    invoke-direct {v0}, Lo/onEnteredHiddenState;-><init>()V

    sput-object v0, Lo/onEnteredHiddenState;->extraCallback:Lo/onEnteredHiddenState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2000
    check-cast p1, Landroid/database/Cursor;

    .line 2199
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2202
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
