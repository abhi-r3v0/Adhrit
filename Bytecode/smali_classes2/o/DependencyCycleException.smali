.class public final Lo/DependencyCycleException;
.super Ljava/lang/Object;

# interfaces
.implements Lo/parseEventExecutionException;


# static fields
.field private static final onPostMessage:Lo/addItemDecoration$onPostMessage;


# instance fields
.field private final id:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "PhoneskyVerificationUtils"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/DependencyCycleException;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    iput-object p1, p0, Lo/DependencyCycleException;->id:Ljava/lang/String;

    .line 1003
    iput-object p2, p0, Lo/DependencyCycleException;->token:Ljava/lang/String;

    return-void
.end method

.method public static onMessageChannelReady(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.android.vending"

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lo/CardFinalPaymentData;->onNavigationEvent([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v5, "dev-keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v5, "test-keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0

    :cond_4
    sget-object p0, Lo/DependencyCycleException;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Phonesky package is not signed -- possibly self-built package. Could not verify."

    invoke-virtual {p0, v2, v1}, Lo/addItemDecoration$onPostMessage;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_0
    return v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1005
    iget-object v0, p0, Lo/DependencyCycleException;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 1006
    iget-object v0, p0, Lo/DependencyCycleException;->token:Ljava/lang/String;

    return-object v0
.end method
