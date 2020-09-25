.class final Lo/shouldIncludeCompoundHash$asBinder;
.super Lo/saveTrackedQueryKeys;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldIncludeCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "asBinder"
.end annotation


# instance fields
.field onPostMessage:Lo/buildAncestorWhereClause;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 747
    invoke-direct {p0}, Lo/saveTrackedQueryKeys;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V
    .locals 2

    .line 753
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$asBinder;->onPostMessage:Lo/buildAncestorWhereClause;

    .line 1056
    invoke-static {p1}, Lo/shouldContinue;->onMessageChannelReady(Lo/saveTrackedQueryKeys$extraCallback;)Ljava/util/logging/Level;

    move-result-object p1

    .line 1057
    sget-object v1, Lo/oppositeColor;->onPostMessage:Ljava/util/logging/Logger;

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1058
    invoke-static {v0, p1, p2}, Lo/oppositeColor;->onNavigationEvent(Lo/buildAncestorWhereClause;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final varargs extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 758
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$asBinder;->onPostMessage:Lo/buildAncestorWhereClause;

    .line 1064
    invoke-static {p1}, Lo/shouldContinue;->onMessageChannelReady(Lo/saveTrackedQueryKeys$extraCallback;)Ljava/util/logging/Level;

    move-result-object p1

    .line 1065
    sget-object v1, Lo/oppositeColor;->onPostMessage:Ljava/util/logging/Logger;

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1066
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1067
    invoke-static {v0, p1, p2}, Lo/oppositeColor;->onNavigationEvent(Lo/buildAncestorWhereClause;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
