.class public abstract enum Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "getInterfaceDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

.field public static final enum onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

.field private static final synthetic onNavigationEvent:[Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 246
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor$3;

    const-string v1, "STRONG"

    invoke-direct {v0, v1}, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    .line 253
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor$2;

    const-string v1, "WEAK"

    invoke-direct {v0, v1}, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    .line 245
    sget-object v2, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onNavigationEvent:[Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .line 245
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
    .locals 1

    .line 245
    const-class v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    return-object p0
.end method

.method public static values()[Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
    .locals 1

    .line 245
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onNavigationEvent:[Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    invoke-virtual {v0}, [Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    return-object v0
.end method


# virtual methods
.method abstract onPostMessage()Lo/performCreateApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/performCreateApp<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
