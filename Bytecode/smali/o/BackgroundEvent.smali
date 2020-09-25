.class final Lo/BackgroundEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lo/c$onPostMessage;


# static fields
.field public static final onMessageChannelReady:Lo/BackgroundEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/BackgroundEvent;

    invoke-direct {v0}, Lo/BackgroundEvent;-><init>()V

    sput-object v0, Lo/BackgroundEvent;->onMessageChannelReady:Lo/BackgroundEvent;

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

    .line 1000
    invoke-static {p1}, Lo/j;->onPostMessage(Lo/allow$onNavigationEvent;)V

    return-void
.end method
