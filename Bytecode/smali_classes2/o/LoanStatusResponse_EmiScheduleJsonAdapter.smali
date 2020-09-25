.class public abstract Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
.super Lo/LoanStatusResponse$Data;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;,
        Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onMessageChannelReady;,
        Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onNavigationEvent;,
        Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;,
        Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "TMessageType;TBuilderType;>;>",
        "Lo/LoanStatusResponse$Data<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzdtv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzdtt:Lo/StashDataResponse$ScreenData;

.field private zzdtu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtv:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse$Data;-><init>()V

    invoke-static {}, Lo/StashDataResponse$ScreenData;->onNavigationEvent()Lo/StashDataResponse$ScreenData;

    move-result-object v0

    iput-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtt:Lo/StashDataResponse$ScreenData;

    const/4 v0, -0x1

    iput v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtu:I

    return-void
.end method

.method protected static ICustomTabsCallback(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lo/Pitch_CtaJsonAdapter;

    invoke-direct {v0, p0, p1, p2}, Lo/Pitch_CtaJsonAdapter;-><init>(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static ICustomTabsCallback(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse$Input;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
            "TT;*>;>(TT;",
            "Lo/LoanStatusResponse$Input;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    invoke-static {}, Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;->onPostMessage()Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->extraCallback(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse$Input;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->extraCallback:I

    invoke-virtual {p0, v3, v1, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v3

    invoke-interface {v3, p0}, Lo/PoweredBy;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v2, :cond_3

    sget v2, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onNavigationEvent:I

    if-eqz v3, :cond_2

    move-object v4, p0

    goto :goto_0

    :cond_2
    move-object v4, v1

    :goto_0
    invoke-virtual {p0, v2, v4, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzbed;-><init>(Lo/LoanSummary$Details;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbed;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->extraCallback(Lo/LoanSummary$Details;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    if-eqz p0, :cond_b

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->extraCallback:I

    invoke-virtual {p0, v3, v1, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object p1

    invoke-interface {p1, p0}, Lo/PoweredBy;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v2, :cond_9

    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onNavigationEvent:I

    if-eqz p1, :cond_8

    move-object v2, p0

    goto :goto_3

    :cond_8
    move-object v2, v1

    :goto_3
    invoke-virtual {p0, v0, v2, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_4
    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzbed;-><init>(Lo/LoanSummary$Details;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbed;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->extraCallback(Lo/LoanSummary$Details;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0

    :cond_b
    :goto_5
    return-object p0
.end method

.method protected static ICustomTabsCallback(Ljava/lang/Class;Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtv:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static extraCallback(Ljava/lang/Class;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtv:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtv:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to get default instance for: "

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method private static extraCallback(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse$Input;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
            "TT;*>;>(TT;",
            "Lo/LoanStatusResponse$Input;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lo/LoanStatusResponse$Input;->extraCallback()Lo/LoanStatusResponse$ScreenData;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse$ScreenData;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Lo/LoanStatusResponse$ScreenData;->onNavigationEvent(I)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->extraCallback(Lo/LoanSummary$Details;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    throw p0
.end method

.method private static onMessageChannelReady(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Lo/LoanStatusResponse$ScreenData;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
            "TT;*>;>(TT;",
            "Lo/LoanStatusResponse$ScreenData;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onPostMessage:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    :try_start_0
    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v0

    invoke-static {p1}, Lo/LoanStatusResponse$SetupPitch;->onNavigationEvent(Lo/LoanStatusResponse$ScreenData;)Lo/LoanStatusResponse$SetupPitch;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lo/PoweredBy;->onPostMessage(Ljava/lang/Object;Lo/Pitch;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)V

    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object p1

    invoke-interface {p1, p0}, Lo/PoweredBy;->onNavigationEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzbbu;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbu;

    throw p0

    :cond_0
    throw p0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzbbu;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbu;

    throw p0

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbbu;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->extraCallback(Lo/LoanSummary$Details;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0
.end method

.method protected static final onMessageChannelReady(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    sget p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->extraCallback:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object p1

    invoke-interface {p1, p0}, Lo/PoweredBy;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static varargs onNavigationEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static onNavigationEvent(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;[B)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onPostMessage:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    :try_start_0
    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v0

    const/4 v3, 0x0

    array-length v4, p1

    new-instance v5, Lo/LoanStatusResponse$ErrorObject;

    invoke-direct {v5}, Lo/LoanStatusResponse$ErrorObject;-><init>()V

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lo/PoweredBy;->ICustomTabsCallback(Ljava/lang/Object;[BIILo/LoanStatusResponse$ErrorObject;)V

    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object p1

    invoke-interface {p1, p0}, Lo/PoweredBy;->onNavigationEvent(Ljava/lang/Object;)V

    iget p1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdpf:I

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->extraCallback(Lo/LoanSummary$Details;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzbbu;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbu;

    throw p0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbu;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->extraCallback(Lo/LoanSummary$Details;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0
.end method

.method protected static onPostMessage(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;[B)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    invoke-static {p0, p1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onNavigationEvent(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;[B)Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->extraCallback:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/PoweredBy;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_3

    sget p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onNavigationEvent:I

    if-eqz v2, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzbed;-><init>(Lo/LoanSummary$Details;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbed;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->extraCallback(Lo/LoanSummary$Details;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return-object p0
.end method

.method protected static postMessage()Lo/LoanStatusResponse_MandateDetailsJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/LoanStatusResponse_MandateDetailsJsonAdapter<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lo/Pitch$Cta;->extraCallback()Lo/Pitch$Cta;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsService()Z
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->extraCallback:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return v3

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v1

    invoke-interface {v1, p0}, Lo/PoweredBy;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_3

    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onNavigationEvent:I

    if-eqz v1, :cond_2

    move-object v3, p0

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-virtual {p0, v0, v3, v2}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onTransact:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v0

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    invoke-interface {v0, p0, p1}, Lo/PoweredBy;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final extraCallback(Lcom/google/android/gms/internal/ads/zzbav;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;)Lo/PoweredBy;

    move-result-object v0

    invoke-static {p1}, Lo/LoanStatusResponse$StashSummaryData;->ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzbav;)Lo/LoanStatusResponse$StashSummaryData;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lo/PoweredBy;->onPostMessage(Ljava/lang/Object;Lo/UpcomingEmiData;)V

    return-void
.end method

.method public final synthetic extraCommand()Lo/LoanSummaryData;
    .locals 2

    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    invoke-virtual {v0, p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdpf:I

    if-eqz v0, :cond_0

    iget v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdpf:I

    return v0

    :cond_0
    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/PoweredBy;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdpf:I

    iget v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdpf:I

    return v0
.end method

.method final newSession()I
    .locals 1

    iget v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtu:I

    return v0
.end method

.method protected abstract onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final onNavigationEvent(I)V
    .locals 0

    iput p1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtu:I

    return-void
.end method

.method public final synthetic requestPostMessageChannel()Lo/LoanSummaryData;
    .locals 2

    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/LoanSummary$Info;->onPostMessage(Lo/LoanSummary$Details;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic updateVisuals()Lo/LoanSummary$Details;
    .locals 2

    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onTransact:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    return-object v0
.end method

.method public final warmup()I
    .locals 2

    iget v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtu:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/PoweredBy;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/PoweredBy;->extraCallback(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtu:I

    :cond_0
    iget v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtu:I

    return v0
.end method
