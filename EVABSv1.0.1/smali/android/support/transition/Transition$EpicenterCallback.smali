.class public abstract Landroid/support/transition/Transition$EpicenterCallback;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EpicenterCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onGetEpicenter(Landroid/support/transition/Transition;)Landroid/graphics/Rect;
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
