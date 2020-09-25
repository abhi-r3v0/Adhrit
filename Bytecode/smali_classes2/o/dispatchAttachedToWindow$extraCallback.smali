.class public final Lo/dispatchAttachedToWindow$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchAttachedToWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/NBAFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/dreamplug/fabrik/ui/nba/NBAFragment;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/internal/FederatedSignInActivity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Lo/dispatchAttachedToWindow$extraCallback;->zza:Lcom/google/firebase/auth/internal/FederatedSignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1002
    iget-object v0, p0, Lo/dispatchAttachedToWindow$extraCallback;->zza:Lcom/google/firebase/auth/internal/FederatedSignInActivity;

    invoke-static {v0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza(Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V

    const/4 v0, 0x0

    .line 1003
    invoke-static {v0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
