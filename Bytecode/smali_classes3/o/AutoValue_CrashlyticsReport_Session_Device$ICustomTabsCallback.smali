.class public Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final data:Lo/AutoValue_CrashlyticsReport_Session_User$1;

.field private final fieldMask:Lo/CrashlyticsReport$CustomAttribute;

.field private final fieldTransforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$CustomAttribute$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$CustomAttribute;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_User$1;",
            "Lo/CrashlyticsReport$CustomAttribute;",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$CustomAttribute$Builder;",
            ">;)V"
        }
    .end annotation

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;->data:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    .line 360
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;->fieldMask:Lo/CrashlyticsReport$CustomAttribute;

    .line 361
    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;->fieldTransforms:Ljava/util/List;

    return-void
.end method


# virtual methods
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

    .line 365
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;->fieldTransforms:Ljava/util/List;

    return-object v0
.end method

.method public toMutationList(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/CrashlyticsReport$FilesPayload$File;",
            ")",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    new-instance v1, Lo/CrashlyticsReport$FilesPayload$File$Builder;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;->data:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;->fieldMask:Lo/CrashlyticsReport$CustomAttribute;

    invoke-direct {v1, p1, v2, v3, p2}, Lo/CrashlyticsReport$FilesPayload$File$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$CustomAttribute;Lo/CrashlyticsReport$FilesPayload$File;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;->fieldTransforms:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 372
    new-instance p2, Lo/CrashlyticsReport$Session$Application$Builder;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;->fieldTransforms:Ljava/util/List;

    invoke-direct {p2, p1, v1}, Lo/CrashlyticsReport$Session$Application$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Ljava/util/List;)V

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
