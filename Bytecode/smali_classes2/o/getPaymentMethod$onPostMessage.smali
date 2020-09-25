.class public final Lo/getPaymentMethod$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getPaymentMethod$onPostMessage;->ICustomTabsCallback:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lo/getPaymentMethod$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 7
    :cond_0
    instance-of v1, p1, Lo/getPaymentMethod$onPostMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 9
    :cond_1
    check-cast p1, Lo/getPaymentMethod$onPostMessage;

    .line 10
    iget-object v1, p0, Lo/getPaymentMethod$onPostMessage;->ICustomTabsCallback:Ljava/lang/Object;

    iget-object v3, p1, Lo/getPaymentMethod$onPostMessage;->ICustomTabsCallback:Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lo/getPaymentMethod$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    iget-object p1, p1, Lo/getPaymentMethod$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 11
    iget-object v0, p0, Lo/getPaymentMethod$onPostMessage;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Lo/getPaymentMethod$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
