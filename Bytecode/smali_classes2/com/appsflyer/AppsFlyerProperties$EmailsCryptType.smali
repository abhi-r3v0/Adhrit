.class public final enum Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmailsCryptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

.field public static final enum SHA256:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

.field private static final synthetic ı:[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;


# instance fields
.field private final ǃ:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 228
    new-instance v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    .line 229
    new-instance v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    const/4 v2, 0x1

    const-string v3, "SHA256"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v2, v4}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->SHA256:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    .line 227
    sget-object v4, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->ı:[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput p3, p0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->ǃ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;
    .locals 1

    .line 227
    const-class v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;
    .locals 1

    .line 227
    sget-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->ı:[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {v0}, [Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->ǃ:I

    return v0
.end method
