.class public final Lo/getStoreAssociationHeader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile onMessageChannelReady:I = -0x1


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

.field private final arg$2:Lo/insert;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V
    .locals 0

    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getStoreAssociationHeader;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    iput-object p2, p0, Lo/getStoreAssociationHeader;->arg$2:Lo/insert;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)Ljava/lang/Runnable;
    .locals 1

    .line 5000
    new-instance v0, Lo/getStoreAssociationHeader;

    invoke-direct {v0, p0, p1}, Lo/getStoreAssociationHeader;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V

    return-object v0
.end method

.method public static onPostMessage(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 12
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onPostMessage(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1007
    sget-object v0, Lo/preferLastSpan$onMessageChannelReady;->extraCallback:Lo/preferLastSpan$onMessageChannelReady;

    invoke-virtual {v0, p0}, Lo/preferLastSpan$onMessageChannelReady;->onNavigationEvent(Landroid/content/Context;)Lo/component28;

    move-result-object p0

    .line 2005
    iget-object p0, p0, Lo/component28;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 5
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p1, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "SHA1"

    .line 6
    invoke-static {p1}, Lo/getStoreAssociationHeader;->onPostMessage(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 4000
    iget-object v0, p0, Lo/getStoreAssociationHeader;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    iget-object v1, p0, Lo/getStoreAssociationHeader;->arg$2:Lo/insert;

    invoke-static {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->lambda$onConnectivityStateChange$1(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V

    return-void
.end method
