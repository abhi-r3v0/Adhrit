.class final enum Lcom/appsflyer/internal/w$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/w$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ı:Lcom/appsflyer/internal/w$e;

.field private static final synthetic ǃ:[Lcom/appsflyer/internal/w$e;

.field private static enum ι:Lcom/appsflyer/internal/w$e;


# instance fields
.field private Ι:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 70
    new-instance v0, Lcom/appsflyer/internal/w$e;

    const/4 v1, 0x0

    const-string v2, "GOOGLE"

    invoke-direct {v0, v2, v1, v1}, Lcom/appsflyer/internal/w$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/w$e;->ι:Lcom/appsflyer/internal/w$e;

    new-instance v0, Lcom/appsflyer/internal/w$e;

    const/4 v2, 0x1

    const-string v3, "AMAZON"

    invoke-direct {v0, v3, v2, v2}, Lcom/appsflyer/internal/w$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/internal/w$e;->ı:Lcom/appsflyer/internal/w$e;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/appsflyer/internal/w$e;

    .line 69
    sget-object v4, Lcom/appsflyer/internal/w$e;->ι:Lcom/appsflyer/internal/w$e;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/appsflyer/internal/w$e;->ǃ:[Lcom/appsflyer/internal/w$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/appsflyer/internal/w$e;->Ι:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/w$e;
    .locals 1

    .line 69
    const-class v0, Lcom/appsflyer/internal/w$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/w$e;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/w$e;
    .locals 1

    .line 69
    sget-object v0, Lcom/appsflyer/internal/w$e;->ǃ:[Lcom/appsflyer/internal/w$e;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/w$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/w$e;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 92
    iget v0, p0, Lcom/appsflyer/internal/w$e;->Ι:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
