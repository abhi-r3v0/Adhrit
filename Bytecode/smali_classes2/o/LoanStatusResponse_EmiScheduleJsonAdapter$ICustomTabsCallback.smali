.class public final Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:I = 0x5

.field public static final enum ICustomTabsCallback$Stub:I = 0x1

.field private static final synthetic ICustomTabsCallback$Stub$Proxy:[I

.field public static final enum ICustomTabsService:I = 0x2

.field public static final enum asBinder:I = 0x7

.field public static final enum asInterface:I = 0x1

.field public static final enum extraCallback:I = 0x1

.field private static final synthetic getInterfaceDescriptor:[I

.field private static final synthetic newSession:[I

.field public static final enum onMessageChannelReady:I = 0x3

.field public static final enum onNavigationEvent:I = 0x2

.field public static final enum onPostMessage:I = 0x4

.field public static final enum onRelationshipValidationResult:I = 0x2

.field public static final enum onTransact:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v4, 0x2

    aput v4, v1, v3

    const/4 v5, 0x3

    aput v5, v1, v4

    const/4 v6, 0x4

    aput v6, v1, v5

    const/4 v5, 0x5

    aput v5, v1, v6

    const/4 v6, 0x6

    aput v6, v1, v5

    aput v0, v1, v6

    sput-object v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->getInterfaceDescriptor:[I

    new-array v0, v4, [I

    aput v3, v0, v2

    aput v4, v0, v3

    sput-object v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->newSession:[I

    new-array v0, v4, [I

    aput v3, v0, v2

    aput v4, v0, v3

    sput-object v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:[I

    return-void
.end method

.method public static extraCallback()[I
    .locals 1

    sget-object v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->getInterfaceDescriptor:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
