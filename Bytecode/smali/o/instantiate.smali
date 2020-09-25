.class final Lo/instantiate;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setArguments;


# instance fields
.field private final ICustomTabsCallback:Lo/initLifecycle;


# direct methods
.method public constructor <init>(Lo/initLifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/instantiate;->ICustomTabsCallback:Lo/initLifecycle;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 1

    iget-object v0, p0, Lo/instantiate;->ICustomTabsCallback:Lo/initLifecycle;

    invoke-static {v0}, Lo/initLifecycle;->extraCallback(Lo/initLifecycle;)V

    return-void
.end method
