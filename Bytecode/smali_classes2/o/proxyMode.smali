.class final Lo/proxyMode;
.super Ljava/lang/Object;

# interfaces
.implements Lo/c$onPostMessage;


# instance fields
.field private final onPostMessage:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/proxyMode;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/allow$onNavigationEvent;)V
    .locals 1

    iget-boolean v0, p0, Lo/proxyMode;->onPostMessage:Z

    .line 1000
    invoke-static {v0, p1}, Lo/j;->ICustomTabsCallback(ZLo/allow$onNavigationEvent;)V

    return-void
.end method
