.class public final Lo/initializeApp;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "Lo/readObject;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final asBinder:Lcom/google/android/gms/common/api/Scope;

.field public static final extraCallback:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "Lo/readObject;",
            "Lo/LocalTestingException;",
            ">;"
        }
    .end annotation
.end field

.field public static final onMessageChannelReady:Lo/setCustomAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount<",
            "Lo/LocalTestingException;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Lo/setCustomAmount$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onRelationshipValidationResult<",
            "Lo/readObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Lo/setCustomAmount$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onRelationshipValidationResult<",
            "Lo/readObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final onRelationshipValidationResult:Lo/setCustomAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final onTransact:Lcom/google/android/gms/common/api/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lo/setCustomAmount$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/setCustomAmount$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/initializeApp;->onPostMessage:Lo/setCustomAmount$onRelationshipValidationResult;

    .line 2
    new-instance v0, Lo/setCustomAmount$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/setCustomAmount$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/initializeApp;->onNavigationEvent:Lo/setCustomAmount$onRelationshipValidationResult;

    .line 3
    new-instance v0, Lo/getOptions;

    invoke-direct {v0}, Lo/getOptions;-><init>()V

    sput-object v0, Lo/initializeApp;->extraCallback:Lo/setCustomAmount$onNavigationEvent;

    .line 4
    new-instance v0, Lo/setAutomaticResourceManagementEnabled;

    invoke-direct {v0}, Lo/setAutomaticResourceManagementEnabled;-><init>()V

    sput-object v0, Lo/initializeApp;->ICustomTabsCallback:Lo/setCustomAmount$onNavigationEvent;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/initializeApp;->onTransact:Lcom/google/android/gms/common/api/Scope;

    .line 6
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/initializeApp;->asBinder:Lcom/google/android/gms/common/api/Scope;

    .line 7
    new-instance v0, Lo/setCustomAmount;

    sget-object v1, Lo/initializeApp;->extraCallback:Lo/setCustomAmount$onNavigationEvent;

    sget-object v2, Lo/initializeApp;->onPostMessage:Lo/setCustomAmount$onRelationshipValidationResult;

    const-string v3, "SignIn.API"

    invoke-direct {v0, v3, v1, v2}, Lo/setCustomAmount;-><init>(Ljava/lang/String;Lo/setCustomAmount$onNavigationEvent;Lo/setCustomAmount$onRelationshipValidationResult;)V

    sput-object v0, Lo/initializeApp;->onMessageChannelReady:Lo/setCustomAmount;

    .line 8
    new-instance v0, Lo/setCustomAmount;

    sget-object v1, Lo/initializeApp;->ICustomTabsCallback:Lo/setCustomAmount$onNavigationEvent;

    sget-object v2, Lo/initializeApp;->onNavigationEvent:Lo/setCustomAmount$onRelationshipValidationResult;

    const-string v3, "SignIn.INTERNAL_API"

    invoke-direct {v0, v3, v1, v2}, Lo/setCustomAmount;-><init>(Ljava/lang/String;Lo/setCustomAmount$onNavigationEvent;Lo/setCustomAmount$onRelationshipValidationResult;)V

    sput-object v0, Lo/initializeApp;->onRelationshipValidationResult:Lo/setCustomAmount;

    return-void
.end method
