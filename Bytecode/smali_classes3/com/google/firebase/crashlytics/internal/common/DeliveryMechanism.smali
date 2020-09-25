.class public final enum Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

.field public static final enum APP_STORE:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

.field public static final enum DEVELOPER:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

.field public static final enum TEST_DISTRIBUTION:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

.field public static final enum USER_SIDELOAD:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "DEVELOPER"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->DEVELOPER:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 20
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    const/4 v3, 0x2

    const-string v4, "USER_SIDELOAD"

    invoke-direct {v0, v4, v2, v3}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->USER_SIDELOAD:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 21
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    const/4 v4, 0x3

    const-string v5, "TEST_DISTRIBUTION"

    invoke-direct {v0, v5, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->TEST_DISTRIBUTION:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 22
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    const/4 v5, 0x4

    const-string v6, "APP_STORE"

    invoke-direct {v0, v6, v4, v5}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->APP_STORE:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    new-array v5, v5, [Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 18
    sget-object v6, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->DEVELOPER:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    aput-object v6, v5, v1

    sget-object v1, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->USER_SIDELOAD:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    aput-object v1, v5, v2

    sget-object v1, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->TEST_DISTRIBUTION:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->id:I

    return-void
.end method

.method public static determineFrom(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;
    .locals 0

    if-eqz p0, :cond_0

    .line 44
    sget-object p0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->APP_STORE:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->DEVELOPER:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;
    .locals 1

    .line 18
    const-class v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->id:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
