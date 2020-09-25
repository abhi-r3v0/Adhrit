.class final Lo/CrashlyticsNdkRegistrar$4;
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

.field private synthetic onMessageChannelReady:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lo/CrashlyticsNdkRegistrar$4;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lo/CrashlyticsNdkRegistrar$4;->onMessageChannelReady:Ljava/lang/Class;

    invoke-direct {p0}, Lo/CrashlyticsNdkRegistrar;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Object;
    .locals 4
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

    .line 124
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$4;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo/CrashlyticsNdkRegistrar$4;->onMessageChannelReady:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$4;->onMessageChannelReady:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
