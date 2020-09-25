.class public final synthetic Lo/parseEventBinaryImage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/doBackgroundInitializationAsync;


# static fields
.field public static final $instance:Lo/doBackgroundInitializationAsync;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/parseEventBinaryImage;

    invoke-direct {v0}, Lo/parseEventBinaryImage;-><init>()V

    sput-object v0, Lo/parseEventBinaryImage;->$instance:Lo/doBackgroundInitializationAsync;

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

    invoke-static {p1}, Lcom/google/firebase/iid/Registrar;->lambda$getComponents$1$Registrar(Lo/logException;)Lo/access$lambda$5;

    move-result-object p1

    return-object p1
.end method
