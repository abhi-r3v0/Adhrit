.class final Lo/CrashlyticsNdkRegistrar$1;
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
.field private synthetic ICustomTabsCallback:Ljava/lang/Class;

.field private synthetic onMessageChannelReady:Ljava/lang/reflect/Method;

.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;I)V
    .locals 0

    .line 95
    iput-object p1, p0, Lo/CrashlyticsNdkRegistrar$1;->onMessageChannelReady:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lo/CrashlyticsNdkRegistrar$1;->ICustomTabsCallback:Ljava/lang/Class;

    iput p3, p0, Lo/CrashlyticsNdkRegistrar$1;->onPostMessage:I

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

    .line 98
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$1;->onMessageChannelReady:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo/CrashlyticsNdkRegistrar$1;->ICustomTabsCallback:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lo/CrashlyticsNdkRegistrar$1;->onPostMessage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$1;->ICustomTabsCallback:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
