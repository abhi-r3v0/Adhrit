.class final Lo/Header$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final extraCallback:I

.field public final onNavigationEvent:I

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2612
    iput p1, p0, Lo/Header$ICustomTabsCallback;->extraCallback:I

    .line 2613
    iput p2, p0, Lo/Header$ICustomTabsCallback;->onNavigationEvent:I

    .line 2614
    iput-object p3, p0, Lo/Header$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2622
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2625
    :cond_1
    check-cast p1, Lo/Header$ICustomTabsCallback;

    .line 2626
    iget v2, p0, Lo/Header$ICustomTabsCallback;->extraCallback:I

    iget v3, p1, Lo/Header$ICustomTabsCallback;->extraCallback:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/Header$ICustomTabsCallback;->onNavigationEvent:I

    iget v3, p1, Lo/Header$ICustomTabsCallback;->onNavigationEvent:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/Header$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    iget-object p1, p1, Lo/Header$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 2627
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 2632
    iget v0, p0, Lo/Header$ICustomTabsCallback;->extraCallback:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2633
    iget v1, p0, Lo/Header$ICustomTabsCallback;->onNavigationEvent:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2634
    iget-object v1, p0, Lo/Header$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
