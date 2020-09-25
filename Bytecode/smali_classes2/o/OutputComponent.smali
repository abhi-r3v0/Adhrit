.class final Lo/OutputComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lo/QuickActions;


# instance fields
.field private final synthetic onNavigationEvent:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lo/LifestyleSectionJsonAdapter;Landroid/app/Activity;)V
    .locals 0

    iput-object p2, p0, Lo/OutputComponent;->onNavigationEvent:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    iget-object v0, p0, Lo/OutputComponent;->onNavigationEvent:Landroid/app/Activity;

    invoke-interface {p1, v0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method
