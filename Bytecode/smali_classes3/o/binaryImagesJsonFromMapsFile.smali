.class public final synthetic Lo/binaryImagesJsonFromMapsFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/doBackgroundInitializationAsync;


# static fields
.field public static final $instance:Lo/doBackgroundInitializationAsync;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/binaryImagesJsonFromMapsFile;

    invoke-direct {v0}, Lo/binaryImagesJsonFromMapsFile;-><init>()V

    sput-object v0, Lo/binaryImagesJsonFromMapsFile;->$instance:Lo/doBackgroundInitializationAsync;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lo/logException;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->lambda$getComponents$0$FirebaseMessagingRegistrar(Lo/logException;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    return-object p1
.end method
