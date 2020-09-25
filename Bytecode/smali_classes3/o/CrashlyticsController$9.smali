.class public final synthetic Lo/CrashlyticsController$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/doBackgroundInitializationAsync;


# static fields
.field public static final zza:Lo/doBackgroundInitializationAsync;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/CrashlyticsController$9;

    invoke-direct {v0}, Lo/CrashlyticsController$9;-><init>()V

    sput-object v0, Lo/CrashlyticsController$9;->zza:Lo/doBackgroundInitializationAsync;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lo/logException;)Ljava/lang/Object;
    .locals 1

    .line 2
    const-class v0, Lcom/google/firebase/FirebaseApp;

    invoke-interface {p1, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    .line 3
    new-instance v0, Lo/access$2600;

    invoke-direct {v0, p1}, Lo/access$2600;-><init>(Lcom/google/firebase/FirebaseApp;)V

    return-object v0
.end method
