.class final Lo/getTagFieldNumber$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getWireType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTagFieldNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private extraCallback:[Lo/getWireType;


# direct methods
.method varargs constructor <init>([Lo/getWireType;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lo/getTagFieldNumber$onNavigationEvent;->extraCallback:[Lo/getWireType;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lo/getTagFieldNumber$onNavigationEvent;->extraCallback:[Lo/getWireType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 132
    invoke-interface {v4, p1}, Lo/getWireType;->ICustomTabsCallback(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final onNavigationEvent(Ljava/lang/Class;)Lo/WireFormat$FieldType$1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/WireFormat$FieldType$1;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lo/getTagFieldNumber$onNavigationEvent;->extraCallback:[Lo/getWireType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 142
    invoke-interface {v3, p1}, Lo/getWireType;->ICustomTabsCallback(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    invoke-interface {v3, p1}, Lo/getWireType;->onNavigationEvent(Ljava/lang/Class;)Lo/WireFormat$FieldType$1;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No factory is available for message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
