.class final Lcom/google/android/gms/dynamite/DynamiteModule$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamite/DynamiteModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final onMessageChannelReady:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$onMessageChannelReady;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 6
    iget p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$onMessageChannelReady;->onMessageChannelReady:I

    return p1
.end method

.method public final onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
