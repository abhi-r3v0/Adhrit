.class final Lo/CrashlyticsNdkRegistrar$2;
.super Lo/CrashlyticsNdkRegistrar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashlyticsNdkRegistrar;->onPostMessage(Ljava/lang/Class;)Lo/CrashlyticsNdkRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/CrashlyticsNdkRegistrar<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/reflect/Method;

.field private synthetic extraCallback:Ljava/lang/Object;

.field private synthetic onNavigationEvent:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/CrashlyticsNdkRegistrar$2;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lo/CrashlyticsNdkRegistrar$2;->extraCallback:Ljava/lang/Object;

    iput-object p3, p0, Lo/CrashlyticsNdkRegistrar$2;->onNavigationEvent:Ljava/lang/Class;

    invoke-direct {p0}, Lo/CrashlyticsNdkRegistrar;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$2;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lo/CrashlyticsNdkRegistrar$2;->extraCallback:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lo/CrashlyticsNdkRegistrar$2;->onNavigationEvent:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$2;->onNavigationEvent:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
