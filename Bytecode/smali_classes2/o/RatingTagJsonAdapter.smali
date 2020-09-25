.class public final Lo/RatingTagJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method
