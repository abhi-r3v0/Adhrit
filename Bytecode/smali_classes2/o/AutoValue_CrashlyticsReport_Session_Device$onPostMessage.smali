.class public Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field private final dataSource:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

.field private final fieldMask:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/CrashlyticsReport$CustomAttribute$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->dataSource:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    .line 88
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->fieldMask:Ljava/util/Set;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->fieldTransforms:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;)Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;
    .locals 0

    .line 72
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->dataSource:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    return-object p0
.end method


# virtual methods
.method addToFieldMask(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->fieldMask:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addToFieldTransforms(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/CrashlyticsReport$Session$Application$Organization;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->fieldTransforms:Ljava/util/ArrayList;

    new-instance v1, Lo/CrashlyticsReport$CustomAttribute$Builder;

    invoke-direct {v1, p1, p2}, Lo/CrashlyticsReport$CustomAttribute$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/CrashlyticsReport$Session$Application$Organization;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Z
    .locals 3

    .line 109
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->fieldMask:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 110
    invoke-virtual {p1, v1}, Lo/setRamUsed;->isPrefixOf(Lo/setRamUsed;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 115
    :cond_1
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->fieldTransforms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsReport$CustomAttribute$Builder;

    .line 116
    invoke-virtual {v1}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getFieldPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/setRamUsed;->isPrefixOf(Lo/setRamUsed;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getDataSource()Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->dataSource:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    return-object v0
.end method

.method public getFieldTransforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$CustomAttribute$Builder;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->fieldTransforms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public rootContext()Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;
    .locals 4

    .line 102
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->EMPTY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;ZLo/AutoValue_CrashlyticsReport_Session_Device$1;)V

    return-object v0
.end method

.method public toMergeData(Lo/AutoValue_CrashlyticsReport_Session_User$1;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;
    .locals 3

    .line 141
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->fieldMask:Ljava/util/Set;

    .line 142
    invoke-static {v1}, Lo/CrashlyticsReport$CustomAttribute;->fromSet(Ljava/util/Set;)Lo/CrashlyticsReport$CustomAttribute;

    move-result-object v1

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->fieldTransforms:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;-><init>(Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$CustomAttribute;Ljava/util/List;)V

    return-object v0
.end method

.method public toMergeData(Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$CustomAttribute;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;
    .locals 4

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->fieldTransforms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsReport$CustomAttribute$Builder;

    .line 162
    invoke-virtual {v2}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getFieldPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v3

    invoke-virtual {p2, v3}, Lo/CrashlyticsReport$CustomAttribute;->covers(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_1
    new-instance v1, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p1, p2, v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;-><init>(Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$CustomAttribute;Ljava/util/List;)V

    return-object v1
.end method

.method public toSetData(Lo/AutoValue_CrashlyticsReport_Session_User$1;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;
    .locals 3

    .line 177
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->fieldTransforms:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;-><init>(Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$CustomAttribute;Ljava/util/List;)V

    return-object v0
.end method

.method public toUpdateData(Lo/AutoValue_CrashlyticsReport_Session_User$1;)Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;
    .locals 3

    .line 187
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->fieldMask:Ljava/util/Set;

    .line 188
    invoke-static {v1}, Lo/CrashlyticsReport$CustomAttribute;->fromSet(Ljava/util/Set;)Lo/CrashlyticsReport$CustomAttribute;

    move-result-object v1

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->fieldTransforms:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;-><init>(Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$CustomAttribute;Ljava/util/List;)V

    return-object v0
.end method
