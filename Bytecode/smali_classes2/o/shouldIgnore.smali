.class public final Lo/shouldIgnore;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ak$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/shouldIgnore$ICustomTabsCallback;,
        Lo/shouldIgnore$onPostMessage;
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/shouldIgnore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/shouldIgnore;

    invoke-direct {v0}, Lo/shouldIgnore;-><init>()V

    sput-object v0, Lo/shouldIgnore;->onNavigationEvent:Lo/shouldIgnore;

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
    .locals 0

    .line 2000
    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
