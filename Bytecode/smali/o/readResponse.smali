.class final Lo/readResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lo/c$onPostMessage;


# instance fields
.field private final onPostMessage:Lo/r;


# direct methods
.method public constructor <init>(Lo/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/readResponse;->onPostMessage:Lo/r;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/allow$onNavigationEvent;)V
    .locals 1

    iget-object v0, p0, Lo/readResponse;->onPostMessage:Lo/r;

    .line 1000
    invoke-static {v0, p1}, Lo/j;->onNavigationEvent(Lo/r;Lo/allow$onNavigationEvent;)V

    return-void
.end method
