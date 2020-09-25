.class public abstract Lo/removeDependent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final extraCallback:Lo/doOnboarding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/doOnboarding<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    return-void
.end method

.method public constructor <init>(Lo/doOnboarding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/doOnboarding<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    return-void
.end method


# virtual methods
.method protected abstract extraCallback()V
.end method

.method public final run()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lo/removeDependent;->extraCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    if-eqz v1, :cond_0

    .line 1000
    iget-object v1, v1, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {v1, v0}, Lo/Onboarding;->extraCallback(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method
