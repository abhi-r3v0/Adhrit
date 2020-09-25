.class public final enum Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/FirebaseInstallationsException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

.field public static final enum BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

.field public static final enum UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "BAD_CONFIG"

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    .line 37
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "UNAVAILABLE"

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    .line 26
    sget-object v4, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->$VALUES:[Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;
    .locals 1

    .line 26
    const-class v0, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->$VALUES:[Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    invoke-virtual {v0}, [Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    return-object v0
.end method
