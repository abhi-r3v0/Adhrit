.class final Lo/setNeedsEmptyIcon;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:J

.field private final synthetic onPostMessage:Lo/setForegroundGravity;


# direct methods
.method constructor <init>(Lo/setForegroundGravity;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setNeedsEmptyIcon;->onPostMessage:Lo/setForegroundGravity;

    iput-wide p2, p0, Lo/setNeedsEmptyIcon;->onNavigationEvent:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/setNeedsEmptyIcon;->onPostMessage:Lo/setForegroundGravity;

    iget-wide v1, p0, Lo/setNeedsEmptyIcon;->onNavigationEvent:J

    invoke-static {v0, v1, v2}, Lo/setForegroundGravity;->ICustomTabsCallback(Lo/setForegroundGravity;J)V

    return-void
.end method
