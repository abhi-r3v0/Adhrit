.class public final Lo/LoanManagementResponse;
.super Ljava/lang/Object;


# static fields
.field private static final onNavigationEvent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/LoanDetailsXJsonAdapter;

    invoke-direct {v0}, Lo/LoanDetailsXJsonAdapter;-><init>()V

    sput-object v0, Lo/LoanManagementResponse;->onNavigationEvent:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static synthetic extraCallback()Ljava/security/SecureRandom;
    .locals 1

    invoke-static {}, Lo/LoanManagementResponse;->onNavigationEvent()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method private static onNavigationEvent()Ljava/security/SecureRandom;
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    return-object v0
.end method

.method public static onPostMessage(I)[B
    .locals 1

    new-array p0, p0, [B

    sget-object v0, Lo/LoanManagementResponse;->onNavigationEvent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method
