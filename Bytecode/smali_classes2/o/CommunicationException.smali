.class final Lo/CommunicationException;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic extraCallback:Landroid/content/SharedPreferences;

.field private final synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/CommunicationException;->extraCallback:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lo/CommunicationException;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lo/CommunicationException;->ICustomTabsCallback:Ljava/lang/String;

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
    iget-object v0, p0, Lo/CommunicationException;->extraCallback:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lo/CommunicationException;->onNavigationEvent:Ljava/lang/String;

    iget-object v2, p0, Lo/CommunicationException;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
