.class final Lo/UnityVersionProvider$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UnityVersionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final ICustomTabsCallback:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    xor-int/2addr p1, p2

    iput p1, p0, Lo/UnityVersionProvider$onNavigationEvent;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 147
    instance-of v0, p1, Lo/UnityVersionProvider$onNavigationEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    iget v0, p0, Lo/UnityVersionProvider$onNavigationEvent;->ICustomTabsCallback:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 156
    iget v0, p0, Lo/UnityVersionProvider$onNavigationEvent;->ICustomTabsCallback:I

    return v0
.end method
