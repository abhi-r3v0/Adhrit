.class public final synthetic Lo/forEach;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/doBackgroundInitializationAsync;


# static fields
.field private static final instance:Lo/forEach;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/forEach;

    invoke-direct {v0}, Lo/forEach;-><init>()V

    sput-object v0, Lo/forEach;->instance:Lo/forEach;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/doBackgroundInitializationAsync;
    .locals 1

    sget-object v0, Lo/forEach;->instance:Lo/forEach;

    return-object v0
.end method


# virtual methods
.method public final create(Lo/logException;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(Lo/logException;)Lo/AppsFlyerProperties$EmailsCryptType;

    move-result-object p1

    return-object p1
.end method
