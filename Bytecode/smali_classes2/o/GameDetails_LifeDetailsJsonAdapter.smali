.class final Lo/GameDetails_LifeDetailsJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/GameOverSheetBlock;


# instance fields
.field private final synthetic onPostMessage:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lo/GameDetails;Landroid/app/Activity;)V
    .locals 0

    iput-object p2, p0, Lo/GameDetails_LifeDetailsJsonAdapter;->onPostMessage:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    iget-object v0, p0, Lo/GameDetails_LifeDetailsJsonAdapter;->onPostMessage:Landroid/app/Activity;

    invoke-interface {p1, v0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method
