.class public final Lo/performCreateApp$extraCallback;
.super Lo/performCreateApp;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/performCreateApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/performCreateApp<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/performCreateApp$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 330
    new-instance v0, Lo/performCreateApp$extraCallback;

    invoke-direct {v0}, Lo/performCreateApp$extraCallback;-><init>()V

    sput-object v0, Lo/performCreateApp$extraCallback;->ICustomTabsCallback:Lo/performCreateApp$extraCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 328
    invoke-direct {p0}, Lo/performCreateApp;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 343
    sget-object v0, Lo/performCreateApp$extraCallback;->ICustomTabsCallback:Lo/performCreateApp$extraCallback;

    return-object v0
.end method


# virtual methods
.method protected final ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 0

    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method protected final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 334
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
