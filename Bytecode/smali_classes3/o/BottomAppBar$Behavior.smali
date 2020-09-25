.class final Lo/BottomAppBar$Behavior;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Z

.field private final synthetic extraCallback:Lo/setBackgroundTintMode;


# direct methods
.method constructor <init>(Lo/setBackgroundTintMode;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/BottomAppBar$Behavior;->extraCallback:Lo/setBackgroundTintMode;

    iput-boolean p2, p0, Lo/BottomAppBar$Behavior;->ICustomTabsCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/BottomAppBar$Behavior;->extraCallback:Lo/setBackgroundTintMode;

    invoke-static {v0}, Lo/setBackgroundTintMode;->extraCallback(Lo/setBackgroundTintMode;)Lo/setHint;

    move-result-object v0

    iget-boolean v1, p0, Lo/BottomAppBar$Behavior;->ICustomTabsCallback:Z

    invoke-virtual {v0, v1}, Lo/setHint;->onNavigationEvent(Z)V

    return-void
.end method
