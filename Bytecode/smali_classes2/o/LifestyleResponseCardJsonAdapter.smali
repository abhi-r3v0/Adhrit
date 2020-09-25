.class final Lo/LifestyleResponseCardJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/QuickActions;


# instance fields
.field private final synthetic extraCallback:Landroid/os/Bundle;

.field private final synthetic onMessageChannelReady:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lo/LifestyleSectionJsonAdapter;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lo/LifestyleResponseCardJsonAdapter;->onMessageChannelReady:Landroid/app/Activity;

    iput-object p3, p0, Lo/LifestyleResponseCardJsonAdapter;->extraCallback:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2

    iget-object v0, p0, Lo/LifestyleResponseCardJsonAdapter;->onMessageChannelReady:Landroid/app/Activity;

    iget-object v1, p0, Lo/LifestyleResponseCardJsonAdapter;->extraCallback:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
