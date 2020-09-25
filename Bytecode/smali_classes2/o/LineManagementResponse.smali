.class public final Lo/LineManagementResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lo/LoanCard<",
        "TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/LineManagementResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LineManagementResponse<",
            "Lo/LoanDetailsX;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field private static final asBinder:Ljava/util/logging/Logger;

.field private static final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field public static final extraCallback:Lo/LineManagementResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LineManagementResponse<",
            "Lo/ListPointsJsonAdapter;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final onMessageChannelReady:Lo/LineManagementResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LineManagementResponse<",
            "Lo/LoanCardJsonAdapter;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field public static final onNavigationEvent:Lo/LineManagementResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LineManagementResponse<",
            "Lo/LineManagementResponseJsonAdapter;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/LineManagementResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LineManagementResponse<",
            "Lo/LoanDetailsJsonAdapter;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private static final onRelationshipValidationResult:Lo/LineManagementResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LineManagementResponse<",
            "Lo/LoanDetails;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final onTransact:Lo/LineManagementResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LineManagementResponse<",
            "Lo/LoanDetail;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback$Stub:Lo/LoanCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_WRAPPER;"
        }
    .end annotation
.end field

.field private getInterfaceDescriptor:Z

.field private warmup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-class v0, Lo/LineManagementResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/LineManagementResponse;->asBinder:Ljava/util/logging/Logger;

    invoke-static {}, Lo/LoanStatusResponse$AadhaarInfo;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GmsCore_OpenSSL"

    const-string v1, "AndroidOpenSSL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v5, Lo/LineManagementResponse;->asBinder:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v2

    const-string v4, "Provider %s not available"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.google.crypto.tink.subtle.EngineFactory"

    const-string v8, "toProviderList"

    invoke-virtual {v5, v6, v7, v8, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sput-object v1, Lo/LineManagementResponse;->asInterface:Ljava/util/List;

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo/LineManagementResponse;->asInterface:Ljava/util/List;

    :goto_2
    new-instance v0, Lo/LineManagementResponse;

    new-instance v1, Lo/ListPointsJsonAdapter;

    invoke-direct {v1}, Lo/ListPointsJsonAdapter;-><init>()V

    invoke-direct {v0, v1}, Lo/LineManagementResponse;-><init>(Lo/LoanCard;)V

    sput-object v0, Lo/LineManagementResponse;->extraCallback:Lo/LineManagementResponse;

    new-instance v0, Lo/LineManagementResponse;

    new-instance v1, Lo/LoanDetailsX;

    invoke-direct {v1}, Lo/LoanDetailsX;-><init>()V

    invoke-direct {v0, v1}, Lo/LineManagementResponse;-><init>(Lo/LoanCard;)V

    sput-object v0, Lo/LineManagementResponse;->ICustomTabsCallback:Lo/LineManagementResponse;

    new-instance v0, Lo/LineManagementResponse;

    new-instance v1, Lo/LoanDetail;

    invoke-direct {v1}, Lo/LoanDetail;-><init>()V

    invoke-direct {v0, v1}, Lo/LineManagementResponse;-><init>(Lo/LoanCard;)V

    sput-object v0, Lo/LineManagementResponse;->onTransact:Lo/LineManagementResponse;

    new-instance v0, Lo/LineManagementResponse;

    new-instance v1, Lo/LoanDetails;

    invoke-direct {v1}, Lo/LoanDetails;-><init>()V

    invoke-direct {v0, v1}, Lo/LineManagementResponse;-><init>(Lo/LoanCard;)V

    sput-object v0, Lo/LineManagementResponse;->onRelationshipValidationResult:Lo/LineManagementResponse;

    new-instance v0, Lo/LineManagementResponse;

    new-instance v1, Lo/LoanCardJsonAdapter;

    invoke-direct {v1}, Lo/LoanCardJsonAdapter;-><init>()V

    invoke-direct {v0, v1}, Lo/LineManagementResponse;-><init>(Lo/LoanCard;)V

    sput-object v0, Lo/LineManagementResponse;->onMessageChannelReady:Lo/LineManagementResponse;

    new-instance v0, Lo/LineManagementResponse;

    new-instance v1, Lo/LoanDetailsJsonAdapter;

    invoke-direct {v1}, Lo/LoanDetailsJsonAdapter;-><init>()V

    invoke-direct {v0, v1}, Lo/LineManagementResponse;-><init>(Lo/LoanCard;)V

    sput-object v0, Lo/LineManagementResponse;->onPostMessage:Lo/LineManagementResponse;

    new-instance v0, Lo/LineManagementResponse;

    new-instance v1, Lo/LineManagementResponseJsonAdapter;

    invoke-direct {v1}, Lo/LineManagementResponseJsonAdapter;-><init>()V

    invoke-direct {v0, v1}, Lo/LineManagementResponse;-><init>(Lo/LoanCard;)V

    sput-object v0, Lo/LineManagementResponse;->onNavigationEvent:Lo/LineManagementResponse;

    return-void
.end method

.method private constructor <init>(Lo/LoanCard;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LineManagementResponse;->ICustomTabsCallback$Stub:Lo/LoanCard;

    sget-object p1, Lo/LineManagementResponse;->asInterface:Ljava/util/List;

    iput-object p1, p0, Lo/LineManagementResponse;->warmup:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/LineManagementResponse;->getInterfaceDescriptor:Z

    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/String;Ljava/security/Provider;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo/LineManagementResponse;->ICustomTabsCallback$Stub:Lo/LoanCard;

    invoke-interface {v0, p1, p2}, Lo/LoanCard;->ICustomTabsCallback(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT_ENGINE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lo/LineManagementResponse;->warmup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    invoke-direct {p0, p1, v1}, Lo/LineManagementResponse;->onNavigationEvent(Ljava/lang/String;Ljava/security/Provider;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lo/LineManagementResponse;->ICustomTabsCallback$Stub:Lo/LoanCard;

    :goto_0
    invoke-interface {v0, p1, v1}, Lo/LoanCard;->ICustomTabsCallback(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-boolean v0, p0, Lo/LineManagementResponse;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/LineManagementResponse;->ICustomTabsCallback$Stub:Lo/LoanCard;

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "No good Provider found."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
