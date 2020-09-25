.class final enum Lcom/appsflyer/internal/g$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/g$b;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ı:Lcom/appsflyer/internal/g$b;

.field private static enum ǃ:Lcom/appsflyer/internal/g$b;

.field private static enum ɩ:Lcom/appsflyer/internal/g$b;

.field private static enum Ι:Lcom/appsflyer/internal/g$b;

.field public static final enum ι:Lcom/appsflyer/internal/g$b;

.field private static final synthetic Ӏ:[Lcom/appsflyer/internal/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 206
    new-instance v0, Lcom/appsflyer/internal/g$b;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/appsflyer/internal/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/g$b;->ǃ:Lcom/appsflyer/internal/g$b;

    new-instance v0, Lcom/appsflyer/internal/g$b;

    const/4 v2, 0x1

    const-string v3, "ACCELEROMETER"

    invoke-direct {v0, v3, v2}, Lcom/appsflyer/internal/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/g$b;->ɩ:Lcom/appsflyer/internal/g$b;

    new-instance v0, Lcom/appsflyer/internal/g$b;

    const/4 v3, 0x2

    const-string v4, "MAGNETOMETER"

    invoke-direct {v0, v4, v3}, Lcom/appsflyer/internal/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/g$b;->ι:Lcom/appsflyer/internal/g$b;

    new-instance v0, Lcom/appsflyer/internal/g$b;

    const/4 v4, 0x3

    const-string v5, "RESERVED"

    invoke-direct {v0, v5, v4}, Lcom/appsflyer/internal/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/g$b;->ı:Lcom/appsflyer/internal/g$b;

    new-instance v0, Lcom/appsflyer/internal/g$b;

    const/4 v5, 0x4

    const-string v6, "GYROSCOPE"

    invoke-direct {v0, v6, v5}, Lcom/appsflyer/internal/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/g$b;->Ι:Lcom/appsflyer/internal/g$b;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/appsflyer/internal/g$b;

    .line 205
    sget-object v7, Lcom/appsflyer/internal/g$b;->ǃ:Lcom/appsflyer/internal/g$b;

    aput-object v7, v6, v1

    sget-object v1, Lcom/appsflyer/internal/g$b;->ɩ:Lcom/appsflyer/internal/g$b;

    aput-object v1, v6, v2

    sget-object v1, Lcom/appsflyer/internal/g$b;->ι:Lcom/appsflyer/internal/g$b;

    aput-object v1, v6, v3

    sget-object v1, Lcom/appsflyer/internal/g$b;->ı:Lcom/appsflyer/internal/g$b;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/appsflyer/internal/g$b;->Ӏ:[Lcom/appsflyer/internal/g$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/g$b;
    .locals 1

    .line 205
    const-class v0, Lcom/appsflyer/internal/g$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/g$b;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/g$b;
    .locals 1

    .line 205
    sget-object v0, Lcom/appsflyer/internal/g$b;->Ӏ:[Lcom/appsflyer/internal/g$b;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/g$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/g$b;

    return-object v0
.end method
