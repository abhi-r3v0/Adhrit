.class public final Lcom/dreamplug/androidapp/profile/ReminderResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BC\u0012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\tJ)\u0010\u0014\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003JI\u0010\u0017\u001a\u00020\u00002(\u0008\u0002\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00072\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0004H\u00d6\u0001R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R1\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/profile/ReminderResponse;",
        "",
        "remindersMap",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "enable",
        "",
        "calendarName",
        "(Ljava/util/HashMap;ZLjava/lang/String;)V",
        "getCalendarName",
        "()Ljava/lang/String;",
        "setCalendarName",
        "(Ljava/lang/String;)V",
        "getEnable",
        "()Z",
        "setEnable",
        "(Z)V",
        "getRemindersMap",
        "()Ljava/util/HashMap;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private calendarName:Ljava/lang/String;

.field private enable:Z

.field private final remindersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->remindersMap:Ljava/util/HashMap;

    iput-boolean p2, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->enable:Z

    iput-object p3, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->calendarName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/HashMap;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 89
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/dreamplug/androidapp/profile/ReminderResponse;-><init>(Ljava/util/HashMap;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/profile/ReminderResponse;Ljava/util/HashMap;ZLjava/lang/String;ILjava/lang/Object;)Lcom/dreamplug/androidapp/profile/ReminderResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->remindersMap:Ljava/util/HashMap;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->enable:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->calendarName:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/dreamplug/androidapp/profile/ReminderResponse;->copy(Ljava/util/HashMap;ZLjava/lang/String;)Lcom/dreamplug/androidapp/profile/ReminderResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->remindersMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->enable:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->calendarName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/util/HashMap;ZLjava/lang/String;)Lcom/dreamplug/androidapp/profile/ReminderResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/dreamplug/androidapp/profile/ReminderResponse;"
        }
    .end annotation

    new-instance v0, Lcom/dreamplug/androidapp/profile/ReminderResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/androidapp/profile/ReminderResponse;-><init>(Ljava/util/HashMap;ZLjava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/profile/ReminderResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/profile/ReminderResponse;

    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->remindersMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/dreamplug/androidapp/profile/ReminderResponse;->remindersMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->enable:Z

    iget-boolean v1, p1, Lcom/dreamplug/androidapp/profile/ReminderResponse;->enable:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->calendarName:Ljava/lang/String;

    iget-object p1, p1, Lcom/dreamplug/androidapp/profile/ReminderResponse;->calendarName:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCalendarName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->calendarName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnable()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->enable:Z

    return v0
.end method

.method public final getRemindersMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->remindersMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->remindersMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->enable:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->calendarName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCalendarName(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->calendarName:Ljava/lang/String;

    return-void
.end method

.method public final setEnable(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->enable:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReminderResponse(remindersMap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->remindersMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", calendarName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/profile/ReminderResponse;->calendarName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
