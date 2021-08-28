.class public interface abstract Lcom/android/server/audio/PlayerFocusEnforcer;
.super Ljava/lang/Object;
.source "PlayerFocusEnforcer.java"


# virtual methods
.method public abstract duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
.end method

.method public abstract fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
.end method

.method public abstract forgetUid(I)V
.end method

.method public abstract mutePlayersForCall([I)V
.end method

.method public abstract restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
.end method

.method public abstract unmutePlayersForCall()V
.end method
