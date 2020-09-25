.class final Lo/computeEnumSize$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeEnumSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/computeEnumSize$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeEnumSize$onNavigationEvent<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final ICustomTabsCallback$Stub:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field asBinder:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field extraCallback:Lo/computeEnumSize$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeEnumSize$onNavigationEvent<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Lo/computeEnumSize$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeEnumSize$onNavigationEvent<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field onNavigationEvent:Lo/computeEnumSize$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeEnumSize$onNavigationEvent<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field onPostMessage:Lo/computeEnumSize$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeEnumSize$onNavigationEvent<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field onRelationshipValidationResult:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 451
    iput-object v0, p0, Lo/computeEnumSize$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    .line 452
    iput-object p0, p0, Lo/computeEnumSize$onNavigationEvent;->onPostMessage:Lo/computeEnumSize$onNavigationEvent;

    iput-object p0, p0, Lo/computeEnumSize$onNavigationEvent;->onNavigationEvent:Lo/computeEnumSize$onNavigationEvent;

    return-void
.end method

.method constructor <init>(Lo/computeEnumSize$onNavigationEvent;Ljava/lang/Object;Lo/computeEnumSize$onNavigationEvent;Lo/computeEnumSize$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/computeEnumSize$onNavigationEvent<",
            "TK;TV;>;TK;",
            "Lo/computeEnumSize$onNavigationEvent<",
            "TK;TV;>;",
            "Lo/computeEnumSize$onNavigationEvent<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lo/computeEnumSize$onNavigationEvent;->ICustomTabsCallback:Lo/computeEnumSize$onNavigationEvent;

    .line 458
    iput-object p2, p0, Lo/computeEnumSize$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 459
    iput p1, p0, Lo/computeEnumSize$onNavigationEvent;->onRelationshipValidationResult:I

    .line 460
    iput-object p3, p0, Lo/computeEnumSize$onNavigationEvent;->onNavigationEvent:Lo/computeEnumSize$onNavigationEvent;

    .line 461
    iput-object p4, p0, Lo/computeEnumSize$onNavigationEvent;->onPostMessage:Lo/computeEnumSize$onNavigationEvent;

    .line 462
    iput-object p0, p4, Lo/computeEnumSize$onNavigationEvent;->onNavigationEvent:Lo/computeEnumSize$onNavigationEvent;

    .line 463
    iput-object p0, p3, Lo/computeEnumSize$onNavigationEvent;->onPostMessage:Lo/computeEnumSize$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 482
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 483
    check-cast p1, Ljava/util/Map$Entry;

    .line 484
    iget-object v0, p0, Lo/computeEnumSize$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lo/computeEnumSize$onNavigationEvent;->asBinder:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 485
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lo/computeEnumSize$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lo/computeEnumSize$onNavigationEvent;->asBinder:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 491
    iget-object v0, p0, Lo/computeEnumSize$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 492
    :goto_0
    iget-object v2, p0, Lo/computeEnumSize$onNavigationEvent;->asBinder:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lo/computeEnumSize$onNavigationEvent;->asBinder:Ljava/lang/Object;

    .line 476
    iput-object p1, p0, Lo/computeEnumSize$onNavigationEvent;->asBinder:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/computeEnumSize$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/computeEnumSize$onNavigationEvent;->asBinder:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
