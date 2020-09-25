.class final Lo/setOverflowReserved;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setOnMenuItemClickListener$extraCallback;


# instance fields
.field private final extraCallback:Lo/setOverflowIcon;

.field private final onNavigationEvent:Z


# direct methods
.method public constructor <init>(Lo/setOverflowIcon;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setOverflowReserved;->extraCallback:Lo/setOverflowIcon;

    iput-boolean p2, p0, Lo/setOverflowReserved;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/setOnMenuItemClickListener;I)V
    .locals 2

    iget-object v0, p0, Lo/setOverflowReserved;->extraCallback:Lo/setOverflowIcon;

    iget-boolean v1, p0, Lo/setOverflowReserved;->onNavigationEvent:Z

    invoke-static {v0, v1, p1, p2}, Lo/setOverflowIcon;->ICustomTabsCallback(Lo/setOverflowIcon;ZLo/setOnMenuItemClickListener;I)V

    return-void
.end method
