.class public final Lo/setPasswordVisibilityToggleEnabled;
.super Ljava/lang/Object;


# static fields
.field private static final ICustomTabsCallback:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "Lo/ContentDataSource$ContentDataSourceException;",
            "Lo/setCustomAmount$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field public static final onMessageChannelReady:Lo/setCustomAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount<",
            "Lo/setCustomAmount$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final onPostMessage:Lo/setCustomAmount$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onRelationshipValidationResult<",
            "Lo/ContentDataSource$ContentDataSourceException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/setCustomAmount$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/setCustomAmount$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/setPasswordVisibilityToggleEnabled;->onPostMessage:Lo/setCustomAmount$onRelationshipValidationResult;

    new-instance v0, Lo/FabTransformationBehavior;

    invoke-direct {v0}, Lo/FabTransformationBehavior;-><init>()V

    sput-object v0, Lo/setPasswordVisibilityToggleEnabled;->ICustomTabsCallback:Lo/setCustomAmount$onNavigationEvent;

    new-instance v0, Lo/setCustomAmount;

    sget-object v1, Lo/setPasswordVisibilityToggleEnabled;->ICustomTabsCallback:Lo/setCustomAmount$onNavigationEvent;

    sget-object v2, Lo/setPasswordVisibilityToggleEnabled;->onPostMessage:Lo/setCustomAmount$onRelationshipValidationResult;

    const-string v3, "SafetyNet.API"

    invoke-direct {v0, v3, v1, v2}, Lo/setCustomAmount;-><init>(Ljava/lang/String;Lo/setCustomAmount$onNavigationEvent;Lo/setCustomAmount$onRelationshipValidationResult;)V

    sput-object v0, Lo/setPasswordVisibilityToggleEnabled;->onMessageChannelReady:Lo/setCustomAmount;

    new-instance v0, Lo/setDefaultStereoMode;

    invoke-direct {v0}, Lo/setDefaultStereoMode;-><init>()V

    new-instance v0, Lo/DataSourceException;

    invoke-direct {v0}, Lo/DataSourceException;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
