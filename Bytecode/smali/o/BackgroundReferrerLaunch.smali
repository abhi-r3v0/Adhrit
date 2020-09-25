.class final Lo/BackgroundReferrerLaunch;
.super Ljava/lang/Object;

# interfaces
.implements Lo/c$onPostMessage;


# instance fields
.field private final onPostMessage:Lo/j$extraCallback;


# direct methods
.method public constructor <init>(Lo/j$extraCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/BackgroundReferrerLaunch;->onPostMessage:Lo/j$extraCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/allow$onNavigationEvent;)V
    .locals 1

    iget-object v0, p0, Lo/BackgroundReferrerLaunch;->onPostMessage:Lo/j$extraCallback;

    .line 1000
    invoke-virtual {v0, p1}, Lo/j$extraCallback;->extraCallback(Lo/allow$onNavigationEvent;)V

    return-void
.end method
