.class public Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
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

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;->data:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    .line 334
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;->fieldMask:Lo/CrashlyticsReport$CustomAttribute;

    .line 335
    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;->fieldTransforms:Ljava/util/List;

    return-void
.end method


# virtual methods
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

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;->fieldMask:Lo/CrashlyticsReport$CustomAttribute;

    if-eqz v1, :cond_0

    .line 341
    new-instance v2, Lo/CrashlyticsReport$FilesPayload$File$Builder;

    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;->data:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-direct {v2, p1, v3, v1, p2}, Lo/CrashlyticsReport$FilesPayload$File$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$CustomAttribute;Lo/CrashlyticsReport$FilesPayload$File;)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_0
    new-instance v1, Lo/CrashlyticsReport$Session$Application;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;->data:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-direct {v1, p1, v2, p2}, Lo/CrashlyticsReport$Session$Application;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$FilesPayload$File;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 345
    :goto_0
    iget-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;->fieldTransforms:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 346
    new-instance p2, Lo/CrashlyticsReport$Session$Application$Builder;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;->fieldTransforms:Ljava/util/List;

    invoke-direct {p2, p1, v1}, Lo/CrashlyticsReport$Session$Application$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Ljava/util/List;)V

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method
