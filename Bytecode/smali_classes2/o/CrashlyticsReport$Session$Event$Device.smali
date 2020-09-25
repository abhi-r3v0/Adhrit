.class final synthetic Lo/CrashlyticsReport$Session$Event$Device;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder$ICustomTabsCallback;


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;


# direct methods
.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Device;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;)Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder$ICustomTabsCallback;
    .locals 1

    new-instance v0, Lo/CrashlyticsReport$Session$Event$Device;

    invoke-direct {v0, p0}, Lo/CrashlyticsReport$Session$Event$Device;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;)V

    return-object v0
.end method


# virtual methods
.method public final handleOnlineStateChange(Lo/setGeneratorType;)V
    .locals 1

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Device;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;

    invoke-interface {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;->handleOnlineStateChange(Lo/setGeneratorType;)V

    return-void
.end method
