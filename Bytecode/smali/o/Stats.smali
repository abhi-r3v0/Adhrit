.class final Lo/Stats;
.super Ljava/lang/Object;

# interfaces
.implements Lo/c$onPostMessage;


# static fields
.field public static final extraCallback:Lo/Stats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Stats;

    invoke-direct {v0}, Lo/Stats;-><init>()V

    sput-object v0, Lo/Stats;->extraCallback:Lo/Stats;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/allow$onNavigationEvent;)V
    .locals 0

    invoke-interface {p1}, Lo/allow$onNavigationEvent;->onPostMessage()V

    return-void
.end method
