.class final Lo/HealthUpdater$init$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Ljava/lang/String;

.field private final synthetic onNavigationEvent:Ljava/lang/Boolean;

.field private final synthetic onPostMessage:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/HealthUpdater$init$1;->onPostMessage:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lo/HealthUpdater$init$1;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/HealthUpdater$init$1;->onNavigationEvent:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lo/HealthUpdater$init$1;->onPostMessage:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lo/HealthUpdater$init$1;->extraCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/HealthUpdater$init$1;->onNavigationEvent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
